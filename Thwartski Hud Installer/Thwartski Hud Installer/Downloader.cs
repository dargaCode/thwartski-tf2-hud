﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Net;
using ICSharpCode.SharpZipLib.Zip;
using ICSharpCode.SharpZipLib.Zip.Compression.Streams;
using System.Windows.Forms; 


namespace Thwartski_Hud_Installer
{
    class Downloader
    {
        //classes to store the value being passed in
        private Location assetLocation = null;
        private Location installLocation = null;

        //constructor?
        public Downloader(Location asset, Location install)
        {

            //assign the hud objects
            assetLocation = asset;
            installLocation = install;
        }



        /// <summary>
        /// Check the server version and return its value.
        /// </summary>
        /// <returns></returns>
        private Version checkServerVersion()
        {

            //TODO make this actually check the webserver
            Version serverVersion = new Version("1.0.0");

            return serverVersion;
        }


        /// <summary>
        /// If necessary, download and unzip new assets. Return true if install should be updated.
        /// </summary>
        public bool checkAndUpdate() 
        {
            //where is the exe running from (so we can put files near it)
            string exeFolder = System.IO.Path.GetDirectoryName(Application.ExecutablePath) + @"\";

            //where to put the zipfile
            string pathZipfile = exeFolder + Properties.Resources.stringFilenameZipfile;

            //define the asset location
            assetLocation.PathFolderHudLocation = exeFolder + Properties.Resources.stringFolderAsset;


            //need to update assets?
            if (updateRequired(assetLocation.VersionHud, checkServerVersion()))
            {

                MessageBox.Show("Downloading new assets!");

                //assets successfully updated
                if (updateAssets(exeFolder, pathZipfile))
                {
                    //don't return true, because the assets you just downloaded might not actually be newer than the install (if the player deleted them)
                }
                //something went wrong
                else
                { 
                    //don't install updates if they might be bad somehow
                    return false;
                }
            }
            else
            {
                MessageBox.Show("No need to update assets.");
            }

            //need to update install?
            if (updateRequired(installLocation.VersionHud, assetLocation.VersionHud))
            {
                MessageBox.Show("Install new assets!");

                //new assets need to be installed
                return true;
            }
            else
            {
                MessageBox.Show("No need to install new assets.");

                //new assets don't need to be installed
                return false;
            }
        
        }


        /// <summary>
        /// Compare an active version with a latest version, return true if update required.
        /// </summary>
        /// <param name="active"></param>
        /// <param name="ideal"></param>
        /// <returns></returns>
        private bool updateRequired(Version active, Version ideal)
        {
            //active older than latest
            if ((active.CompareTo(ideal)) < 0)
            {
                //MessageBox.Show("Version comparison: " + Convert.ToString((active.CompareTo(latest))) + "\n \nVersion out of date.");
                
                //update required
                return true;
            }
            //active equal to latest
            else if ((active.CompareTo(ideal)) == 0)
            {
                //MessageBox.Show("Version comparison: " + Convert.ToString((active.CompareTo(latest))) + "\n \nVersion up to date.");
                
                //no need to update
                return false;
            }
            //active newer than latest!?
            else
            {
                //errorWindow("Version comparison: " + Convert.ToString((active.CompareTo(latest))) + "\n \nERROR! Active version newer than newest version!");
                
                //if something's broken, better update to correct it
                return true;
            }
        }


        /// <summary>
        /// Download the hud assets, return true if it worked.
        /// </summary>
        /// <returns></returns>
        private bool updateAssets(string exeFolder, string pathZipFile)
        {

            //used for cycling through assetfolder directory
            DirectoryInfo assetFolderDir = new DirectoryInfo(assetLocation.PathFolderHudLocation);


            //try to download and unzip
            try
            {
                //create a place to place the assets
                if (!assetFolderDir.Exists)
                {
                    assetFolderDir.Create();
                }

                //download the most recent file
                using (var client = new WebClient())
                {
                    client.DownloadFile("http://thwartski-tf2-hud.googlecode.com/files/Thwartski_HUD_v3.0.1_test.zip", pathZipFile); //TODO needs to eventually be dynamic
                }

                //unzip the files to wherever the exe is
                unZip(pathZipFile, exeFolder);

                //remove the zip file when done
                if (File.Exists(pathZipFile))
                {
                    File.Delete(pathZipFile);
                }
            }
            //something went wrong with creating the folder, unzipping, or cleaning up
            catch (System.Exception problem)
            {
                //generic exception for unexpected case
                GlobalStrings.errorWindow(problem.Message);

                //stop the function, send false back to stop the rest of the button functionality.
                return false;
            }

            //everything worked
            return true;
        }

        /// <summary>
        /// Unzip function taken from sharpziplib
        /// </summary>
        /// <param name="sourceZipFile"></param>
        /// <param name="DestinationFolder"></param>
        private void unZip(string sourceZipFile, string DestinationFolder)
        {
            using (ZipInputStream s = new ZipInputStream(File.OpenRead(sourceZipFile)))
            {

                ZipEntry theEntry;
                while ((theEntry = s.GetNextEntry()) != null)
                {

                    string directoryName = Path.GetDirectoryName(theEntry.Name);
                    string fileName = Path.GetFileName(theEntry.Name);

                    // create directory
                    if (directoryName.Length > 0)
                    {
                        Directory.CreateDirectory(DestinationFolder + directoryName);
                    }

                    if (fileName != String.Empty)
                    {
                        using (FileStream streamWriter = File.Create(DestinationFolder + theEntry.Name))
                        {

                            int size = 2048;
                            byte[] data = new byte[2048];
                            while (true)
                            {
                                size = s.Read(data, 0, data.Length);
                                if (size > 0)
                                {
                                    streamWriter.Write(data, 0, size);
                                }
                                else
                                {
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }






    } //namespace
} //class
