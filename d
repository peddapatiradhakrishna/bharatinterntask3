<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>netflix-intro-animation</title>
    <link rel="stylesheet" href="style.css">
    <style>
       *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.background{
    width: 100%;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: black;
    overflow: hidden;
}

.background .logo{
    width: 150px;
    height: max-content;
    display: flex;
    justify-content: space-between;
    position: relative;
    animation: scale 3s ease forwards;
    animation-delay: 1.7s;
}

.background .logo .brush1{
    width: 50px;
    height: 220px;
    display: flex;
    justify-content: center;
    align-items: flex-end;
    position: relative;
    animation:height 0.5s ease forwards;
    animation-delay: 4s;
}

.background .logo .brush1 .color{
    width: 100%;
    height: 0%;
    background-color: rgb(194,0 ,0);
    position: relative;
    z-index: 2;
    animation: moveup 0.5s ease forwards;
}

.background .logo .brush2{
    width: 50px;
    height: 220px;
    display: flex;
    align-items: flex-end;
}

.background .logo .brush2 .color2{
    width: 100%;
    height: 0%;
    background-color: rgb(194,0 ,0);
    animation: moveup 0.5s ease forwards;
    animation-delay: 1s;
}

.background .logo .brush3{
    width: 50px;
    height: 0;
    position: absolute;
    z-index: 2;
    transform: skew(24.4deg);
    transform-origin: top left;
    background: red;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.33);
    animation: moveup 0.5s ease forwards;
    animation-delay: 0.5s;
}

.lines{
    width: max-content;
    height: 100%;
    display: none;
    justify-content: space-evenly;
    position: absolute;
    z-index: 0;
}

.lines .line{
    width: 1px;
    height: 100%;
    background: red;
    margin-right: 1px;
    animation: margin 2s linear forwards, bgcolor 0.2s linear forwards;
    animation-delay: 0.2s;
}


/* forward animation starts */

@keyframes moveup{
    from {
        height: 0;
    }to{
        height: 220px;
    }
}

/* reverse animation */

@keyframes movedown {
    from {
        height: 220px;
    }
    to {
        height: 0;
    }
}


/* main animation lines starts  */

@keyframes opacity {
    0%{
        opacity: 1;
    }100%{
        opacity: 0;
    }
}

@keyframes margin {
    0%{
        width: 1px;
        margin-right: 1px;
        box-shadow: none;
    }100%{
        width: 40px;
        margin-right: var(--m);
        box-shadow: 0 0 5px rgb(172, 172, 172), 0 0 50px var(--c);
    }
}


@keyframes bgcolor{
    0%{
        background:red
    }30%{
        background: radial-gradient(circle, rgba(255, 0, 0, 1) 75%, rgba(0,0 ,0 0.545) 100%);
    }100%{
        background: var(--c);
    }
}

@keyframes height {
    0%{
        width: 50px;
        height: 220px;
    }100%{
        width: max-content;
        height: 100vh;
    }
}


@keyframes scale{
    0%{
        transform: scale(1);
    }100%{
        transform: scale(1.5);
    }
}
    </style>
</head>

<body>
    <div class="background">
        <div class="logo">
            <div class="brush1">
                <div class="color"></div>
            </div>
            <div class="brush2">
                <div class="color2"></div>
            </div>
            <div class="brush3"></div>
        </div>
        <button type="submit"><a href="home.html">button</a></button>
    </div>

    <script>
        const stick1 = document.getElementsByClassName('color')[0];
        const stick2 = document.getElementsByClassName('color2')[0];
        const stick3 = document.getElementsByClassName('brush3')[0];
        const lines = document.getElementsByClassName('lines')[0];

        // make reverse animations trigger
        setTimeout(() => {
            stick2.style.animation = 'movedown 0.5s ease forwards';
        }, 3000);

        setTimeout(() => {
            stick3.style.animation = 'movedown 0.5s ease forwards';
        }, 3500);

        setTimeout(() => {
            stick1.style.animation = 'opacity 0.5s ease forwards';
            lines.style.display = 'flex';
        }, 4000);

        // Create random lines with random margins or gaps
        let colors = [
            '#133286',
            '#3062af',
            '#FFF',
            '#4a7fcb',
            '#133286',
            '#3062af',
            '#628ace',
            '#949fd9',
            '#821e12',
            '#c34821',
            'red',
            '#d3ad94',
            'yellow',
            '#821e12',
            '#462652',
            '#b16f67',
            '#d3ad94',
            '#821e12',
            '#462652',
            '#4a7fcb',
            '#133286',
            '#3062af',
            '#628ace',
            '#b16f67',
            '#d3ad94',
            'yellow',
            '#821e12',
            '#821e12',
            '#c34821',
            '#821e12',
            '#c34821',
            'red',
        ];

        colors.map((color) => {
            const line = document.createElement('div');
            const randomMargin = Math.floor(Math.random() * 1000);

            line.className = 'line';
            line.style.setProperty('--m', `${randomMargin}px`);
            line.style.setProperty('--c', color);
            lines.appendChild(line);
        });

        setTimeout(function() {
            window.location.href = "home.html";
        }, 5000); // Redirect to "home.html" after 5 seconds
    </script>
</body>

</html>
