---
layout: null
---
(function() 
{
    'use strict';
    
    function detectPlatform() 
    {
        const userAgent = navigator.userAgent.toLowerCase();
        const platform = navigator.platform.toLowerCase();
        
        if (/android/.test(userAgent)) 
        {
            return {
                os: 'android',
                arch: 'arm64',
                name: 'Android',
                icon: 'fab fa-android'
            };
        }
        
        if (/iphone|ipad|ipod/.test(userAgent)) 
        {
            return {
                os: 'ios',
                arch: 'arm64',
                name: 'iOS',
                icon: 'fab fa-apple'
            };
        }
        
        if (/win/.test(platform) || /windows/.test(userAgent) || /win32/.test(userAgent)) 
        {
            let arch = 'x86_64';
            if (/wow64|win64|x64|amd64/.test(userAgent)) 
            {
                arch = 'x86_64';
            } 
            else if (/win32|wow32|i386|i686/.test(userAgent)) 
            {
                arch = 'x86_32';
            } 
            else if (/arm64|aarch64/.test(userAgent)) 
            {
                arch = 'arm64';
            }
            
            return {
                os: 'windows',
                arch: arch,
                name: 'Windows',
                icon: 'fab fa-windows'
            };
        }
        
        if (/mac/.test(platform) || /macintosh/.test(userAgent) || /darwin/.test(userAgent)) 
        {
            let arch = 'arm64';
            if (/intel/.test(userAgent) || /x86/.test(userAgent) || /macintel/.test(userAgent)) 
            {
                arch = 'x86_64';
            }
            
            return {
                os: 'macos',
                arch: arch,
                name: 'macOS',
                icon: 'fab fa-apple'
            };
        }
        
        if (/linux/.test(platform) || /linux/.test(userAgent) || /x11/.test(userAgent)) 
        {
            let arch = 'x86_64';
            if (/x86_64|amd64/.test(userAgent) || /x86_64/.test(platform)) 
            {
                arch = 'x86_64';
            } 
            else if (/i386|i686|x86/.test(userAgent) || /i386/.test(platform)) 
            {
                arch = 'x86_32';
            } 
            else if (/arm64|aarch64/.test(userAgent) || /arm64/.test(platform)) 
            {
                arch = 'arm64';
            } 
            else if (/armv7|arm/.test(userAgent) || /arm/.test(platform)) 
            {
                arch = 'arm32';
            } 
            else if (/riscv64/.test(userAgent) || /riscv64/.test(platform)) 
            {
                arch = 'riscv64';
            }
            
            return {
                os: 'linux',
                arch: arch,
                name: 'Linux',
                icon: 'fab fa-linux'
            };
        }
        
        return {
            os: 'unknown',
            arch: 'x86_64',
            name: 'Unknown',
            icon: 'fas fa-question'
        };
    }
    
    function getDownloadUrl(platform) 
    {
        const stkVersion = '{{ site.stk_version }}';
        
        switch (platform.os) 
        {
            case 'windows':
                if (platform.arch === 'x86_64') 
                {
                    return `https://github.com/supertuxkart/stk-code/releases/download/${stkVersion}/SuperTuxKart-${stkVersion}-installer-x86_64.exe`;
                } 
                else if (platform.arch === 'x86_32') 
                {
                    return `https://github.com/supertuxkart/stk-code/releases/download/${stkVersion}/SuperTuxKart-${stkVersion}-installer-i686.exe`;
                } 
                else if (platform.arch === 'arm64') 
                {
                    return `https://github.com/supertuxkart/stk-code/releases/download/${stkVersion}/SuperTuxKart-${stkVersion}-installer-aarch64.exe`;
                }
                break;
                
            case 'macos':
                return `https://github.com/supertuxkart/stk-code/releases/download/${stkVersion}/SuperTuxKart-${stkVersion}-mac-signed.zip`;
                
            case 'linux':
                if (platform.arch === 'x86_64') 
                {
                    return `https://github.com/supertuxkart/stk-code/releases/download/${stkVersion}/SuperTuxKart-${stkVersion}-linux-x86_64.tar.gz`;
                } 
                else if (platform.arch === 'x86_32') 
                {
                    return `https://github.com/supertuxkart/stk-code/releases/download/${stkVersion}/SuperTuxKart-${stkVersion}-linux-x86.tar.gz`;
                } 
                else if (platform.arch === 'arm64') 
                {
                    return `https://github.com/supertuxkart/stk-code/releases/download/${stkVersion}/SuperTuxKart-${stkVersion}-linux-arm64.tar.gz`;
                } 
                else if (platform.arch === 'arm32') 
                {
                    return `https://github.com/supertuxkart/stk-code/releases/download/${stkVersion}/SuperTuxKart-${stkVersion}-linux-armv7.tar.gz`;
                } 
                else if (platform.arch === 'riscv64') 
                {
                    return `https://github.com/supertuxkart/stk-code/releases/download/${stkVersion}/SuperTuxKart-${stkVersion}-linux-riscv64.tar.gz`;
                }
                break;
                
            case 'android':
                return 'https://play.google.com/store/apps/details?id=org.supertuxkart.stk';
                
            case 'ios':
                return 'https://apps.apple.com/app/supertuxkart/id1234567890';
        }
        
        return null;
    }
    
    function getDownloadInstructions(platform) 
    {
        switch (platform.os) 
        {
            case 'windows':
                return 'Run the installer and follow the setup wizard.';
            case 'macos':
                return 'Extract the archive and drag SuperTuxKart to your Applications folder.';
            case 'linux':
                return 'Extract and run **run_game.sh** inside the folder.';
            case 'android':
                return 'Install from Google Play Store or download the APK.';
            case 'ios':
                return 'Install from the App Store.';
            default:
                return 'Please select your platform below.';
        }
    }
    
    function getTranslatedText(key) 
    {
        const elements = document.querySelectorAll('.translate');
        for (let element of elements) 
        {
            if (element.textContent.trim() === key) 
            {
                return element.textContent.trim();
            }
        }
        return key;
    }
    
    function createRecommendedSection() 
    {
        const platform = detectPlatform();
        const downloadUrl = getDownloadUrl(platform);
        const instructions = getDownloadInstructions(platform);
        
        if (!downloadUrl) 
            return '';
        
        const recommendedText = getTranslatedText('Recommended Installation') || 'Recommended Installation';
        const thisIsRecommendedText = getTranslatedText('This is your recommended installation') || 'This is your recommended installation';
        const detectedText = getTranslatedText('Detected:') || 'Detected:';
        const showText = getTranslatedText('Show') || 'Show';
        const hideText = getTranslatedText('Hide') || 'Hide';
        
        const recommendedSection = `
            <div id="recommended-download">
                <span class="download-closing-bracket"></span>
                <input type="checkbox" id="recommended-download-callback">
                <label class="download-toggle" data-show-text="${showText}" data-hide-text="${hideText}" for="recommended-download-callback"></label>
                <span class="download-opening-bracket"></span>
                <div class="download-container">
                    <div class="download-button download-title">
                        <a href="${downloadUrl}">
                            <strong>
                                <span>
                                    <i class="${platform.icon} fa-fw"></i> 
                                    ${recommendedText} - ${platform.name}
                                </span>
                            </strong>
                        </a>
                    </div>
                    <div class="download-content">
                        <div class="download-left" markdown="1">
                            <p><strong>${thisIsRecommendedText}</strong></p>
                            <p>${instructions}</p>
                            <p><em>${detectedText} ${platform.name} (${platform.arch})</em></p>
                        </div>
                        <div class="download-right">
                            <i class="fa fa-download fa-fw fa-2x"></i>
                        </div>
                    </div>
                </div>
            </div>
        `;
        
        return recommendedSection;
    }
    
    function insertRecommendedSection() 
    {
        const placeholder = document.getElementById('recommended-download-placeholder');
        if (placeholder) 
        {
            const recommendedSection = createRecommendedSection();
            placeholder.outerHTML = recommendedSection;
        }
    }
    
    if (document.readyState === 'loading') 
    {
        document.addEventListener('DOMContentLoaded', insertRecommendedSection);
    } 
    else 
    {
        insertRecommendedSection();
    }
})();
