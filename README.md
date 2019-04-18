# ScreenShot
Simple program to take a screenshot and save as bitmap/jpeg.  

- Using **GDI+** to convert bitmap to jpeg on windows.  
  - Windows GDI+ is a class-based API for C/C++ programmers. It enables applications to use graphics and formatted text on both the video display and the printer. Applications based on the Microsoft Win32 API do not access graphics hardware directly. Instead, GDI+ interacts with device drivers on behalf of applications. GDI+ is also supported by Microsoft Win64.  
  

- Using **scrot** to implement the feature on linux. Belows are some common features:  



  - **Installation**
  
  The scrot tool may be pre-installed on your Ubuntu system, you can install it using the following command:
  ```
  sudo apt-get install scrot
  
  ```

  Once the tool is installed, you can launch it by using the following command:  
  ```
  scrot [options] [filename] 
  ```
  - **Image quality setting**  
  
  You can adjust the quality of the screenshot image at the scale of 1-100. High value means high size and low compression. Default value is 75, although effect differs depending on the file format chosen.
  ```
  scrot –quality [NUM]
  ```
  - **Join multiple displays shots**  
  
  In case your machine has *multiple displays* attached to it, scrot allows you to grab and join screenshots of these displays. This feature can be accessed using the -m command line option. 
  ```
  scrot -m

  ```
  
  - References:
    - https://docs.microsoft.com/en-us/windows/desktop/gdiplus/-gdiplus-gdi-start  
    - https://www.howtoforge.com/tutorial/how-to-take-screenshots-in-linux-with-scrot/
  
  

