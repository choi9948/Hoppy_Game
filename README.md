# Hoppy Game
Java-Based Platform Game

## Overview
Hoppy_Game is designed as a vertical-scrolling platformer in which the player ascends through randomized maps. The game emphasizes precision, timing, and strategic movement as the player progresses through increasingly challenging environments.

## Game Settings and Tutorial
### 1) User Authentication
- New players must register by creating a username and password
- Returning players must log in using valid credentials
### 2) Tutorial
Prior to gameplay, players are presented with a tutorial outlining:
- Game controls
- Rules and objectives
- Gameplay mechanics
- Narrative background
### 3) Difficulty Selection
Players may select one of the following difficulty levels:
- **Easy**: Reduced obstacle speed and fewer fixed obstacles
- **Normal**: Balanced obstacle speed and quantity
- **Difficult**: Increased obstacle speed and higher obstacle density
### 4) Game Modes
- **Single-Player Mode**: One player controls a single character
- **Multiplayer Mode**: Two to three players compete simultaneously
### 5) Dynamic Environment
- Platform locations are randomized for each playthrough
- Background visuals change after every three completed vertical maps

## Objectives and Obstacles
### 1) Mandatory Objective
The primary objective is to guide the Hoppy Bird to the top of the level in order to obtain a new pair of wings and successfully complete the game.
### 2) Optional Objective
Players may collect **Golden Apples** to increase their score:
  - Each Golden Apple is worth **1 point**
### 3) Obstacles
The game features two types of obstacles:
  -  **Fixed Obstacles** positioned on platforms
  - **Moving Obstacles** that traverse the screen horizontally or vertically
NOTE: As the player progresses:
  - The number of fixed obstacles increases
  - The speed of moving obstacles increases
Contact with any obstacle results in immediate player elimination and game termination.

## Scoring System
- The scoring system is based solely on the number of Golden Apples collected
- The current score is displayed in the **top-right corner** of the screen
- The number of completed maps is displayed in the **top-left corner**

## Game Results
The game concludes under one of the following conditions:
### 1) Victory
- The player successfully reaches the top of the map
- The message **"Victory"** is displayed on the screen
### 2) Game Over
- The player collides with an obstacle
- The message **"Game Over"** is displayed on the screen
### 3) End-of-Game Options
- In **Single-Player Mode**, the final score and high score are displayed
- In **Multiplayer Mode**, a leaderboard is shown
- Players may choose to replay the game or exit upon completion

## Technologies Used
- **Programming Language**: Java  
- **Framework**: Processing

## Game Demonstration

<table align="center">
  <tr>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/581a5d77-5762-4a09-a12a-60735cb68f90" width="200" style="border:2px solid black;" />
      <br/><em>Start Screen</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/e22be910-ccf5-4dea-83e3-52e9576ff2f9" width="200" style="border:2px solid black;" />
      <br/><em>Login Screen</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/254bdd7b-7b83-4264-885e-e8b5b23127ae" width="200" style="border:2px solid black;" />
      <br/><em>Game Mode 1 Screen</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/7da96db6-b793-4540-a8f2-58cb03739375" width="200" style="border:2px solid black;" />
      <br/><em>Game Mode 2 Screen</em>
    </td>
  </tr>

  <tr>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/4e6ffd4a-4679-45b1-9cf5-f5974589937d" width="200" style="border:2px solid black;" />
      <br/><em>Multiplayer Screen</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/a8946e3e-2099-4a1e-af38-cf409a31f5ca" width="200" style="border:2px solid black;" />
      <br/><em>Storyline Screen</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/503f96ed-2091-46e2-8719-fb782b85087e" width="200" style="border:2px solid black;" />
      <br/><em>Tutorial Screen</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/e1b42109-234a-4d41-875b-11cd9d344fcf" width="200" style="border:2px solid black;" />
      <br/><em>Victory Screen</em>
    </td>
  </tr>

  <tr>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/816a7c1f-13f2-474d-a14c-f7a2b5f9d49e" width="200" style="border:2px solid black;" />
      <br/><em>Game Over Screen</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/1a85e7b5-8ad1-409b-b517-0ad560e52ecf" width="200" style="border:2px solid black;" />
      <br/><em>Gameplay Map 1</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/6c86c532-f875-446d-ba25-014aa1b65dd5" width="200" style="border:2px solid black;" />
      <br/><em>Gameplay Map 2</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/08dd4943-bd63-42f8-8ce5-75970a95e32a" width="200" style="border:2px solid black;" />
      <br/><em>Gameplay Map 3</em>
    </td>
  </tr>

  <tr>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/572bbc84-1c40-41de-b6a6-3fdf80014acd" width="200" style="border:2px solid black;" />
      <br/><em>Gameplay Map 4</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/8a29e110-60d3-46c3-9c94-d65c3bd875e4" width="200" style="border:2px solid black;" />
      <br/><em>Gameplay Map 5</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/50205737-ef8a-46e4-97dc-75b16915d230" width="200" style="border:2px solid black;" />
      <br/><em>Gameplay Map 6</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/c4b6600c-cb33-4ea6-a870-496801950f73" width="200" style="border:2px solid black;" />
      <br/><em>Gameplay Map 7</em>
    </td>
  </tr>

  <tr>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/1ee5d0e4-cc0d-47f7-8187-5e1dbe9e58df" width="200" style="border:2px solid black;" />
      <br/><em>Gameplay Map 8</em>
    </td>
  </tr>
</table>
