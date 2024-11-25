# Installing GNOME Terminal on GitHub Codespaces

To install GNOME Terminal on your GitHub Codespace, follow these steps:

1. **Open the terminal in your Codespace.**

2. **Update the package list:**
    ```sh
    sudo apt-get update
    ```

3. **Install GNOME Terminal:**
    ```sh
    sudo apt-get install gnome-terminal -y
    ```

4. **Verify the installation:**
    ```sh
    gnome-terminal --version
    ```

    5. **Use `tmux` to ping 1.1.1.1 in a new session:**

        Install `tmux` with the following command:
        ```sh
        sudo apt-get install tmux -y
        ```

        Create a new `tmux` session and run the ping command:
        ```sh
        tmux new-session -d -s ping_session 'ping 1.1.1.1'
        ```

    This command will create a new `tmux` session named `ping_session` and start pinging the IP address 1.1.1.1.


    6. **Install the `iputils-ping` package:**
        ```sh
        sudo apt-get install iputils-ping -y
        ```

    This will install the `ping` utility on your Codespace environment.
This will install GNOME Terminal on your Codespace environment.


7. **List `tmux` sessions:**

    To list all active `tmux` sessions, use the following command:
    ```sh
    tmux ls
    ```

    This command will display a list of all current `tmux` sessions, allowing you to see if a session named `ping_session` already exists.


    8. **Create a `tmux` session with a unique name for pinging:**

        To create a `tmux` session with a unique name for pinging, you can use the following command:
        ```sh
        tmux new-session -d -s $(uuidgen) 'ping 1.1.1.1'
        ```

        This command will generate a unique session name using `uuidgen` and start pinging the IP address 1.1.1.1 in that session.

        9. **Install `uuidgen` utility:**

            To install the `uuidgen` utility, use the following command:
            ```sh
            sudo apt-get install uuid-runtime -y
            ```

            This will install the `uuidgen` utility, which is used to generate unique identifiers.



