/*
 * ========================================
 *  배너 광고 설정 파일
 * ========================================
 * 
 * 이미지 추가 방법:
 * 
 * 1. 외부 이미지 URL 사용:
 *    - 웹에서 이미지 우클릭 → "이미지 주소 복사"
 *    - 복사한 URL을 image: "여기에 붙여넣기"
 * 
 * 2. 내 컴퓨터 이미지 사용:
 *    - 이미지 파일을 images 폴더에 저장
 *    - image: "images/파일이름.jpg"
 * 
 * ========================================
 */

const BANNER_CONFIG = {

    // ==========================================
    // 메인 배너 (상단 큰 배너)
    // ==========================================
    mainBanner: {
        image: "",  // 이미지 URL 또는 경로 (비워두면 그라데이션 배경)
        link: "https://example.com",  // 클릭시 이동할 주소
        title: "메인 광고 배너",
        description: "광고 문구를 입력하세요",
        buttonText: "바로가기 →",
        backgroundColor: "linear-gradient(135deg, #ff6b35 0%, #f7931e 50%, #ffcc00 100%)"
    },

    // ==========================================
    // 서브 배너 4개 (메인 배너 아래)
    // ==========================================
    subBanners: [
        {
            image: "",
            link: "https://example1.com",
            title: "배너1",
            description: "광고 문구",
            backgroundColor: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)"
        },
        {
            image: "",
            link: "https://example2.com",
            title: "배너2",
            description: "광고 문구",
            backgroundColor: "linear-gradient(135deg, #f093fb 0%, #f5576c 100%)"
        },
        {
            image: "",
            link: "https://example3.com",
            title: "배너3",
            description: "광고 문구",
            backgroundColor: "linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)"
        },
        {
            image: "",
            link: "https://example4.com",
            title: "배너4",
            description: "광고 문구",
            backgroundColor: "linear-gradient(135deg, #43e97b 0%, #38f9d7 100%)"
        }
    ],

    // ==========================================
    // 와이드 배너 (콘텐츠 상단)
    // ==========================================
    wideBanner: {
        image: "",
        link: "https://example.com",
        badge: "EVENT",
        title: "와이드 광고 배너",
        description: "배너 설명 문구",
        buttonText: "자세히 보기",
        backgroundColor: "linear-gradient(135deg, #fa709a 0%, #fee140 100%)"
    },

    // ==========================================
    // 중간 배너들 (섹션 사이)
    // ==========================================
    midBanners: [
        {
            image: "",
            link: "https://example.com",
            title: "중간 광고 1",
            description: "광고 문구",
            backgroundColor: "linear-gradient(135deg, #a8edea 0%, #fed6e3 100%)"
        },
        {
            image: "",
            link: "https://example.com",
            title: "중간 광고 2",
            description: "광고 문구",
            backgroundColor: "linear-gradient(135deg, #ff9a9e 0%, #fecfef 100%)"
        }
    ]
};


// ========================================
// 아래는 수정하지 마세요!
// 배너를 자동으로 적용하는 코드입니다.
// ========================================

document.addEventListener('DOMContentLoaded', function() {
    
    // 메인 배너 적용
    const mainBannerEl = document.querySelector('.big-banner');
    if (mainBannerEl && BANNER_CONFIG.mainBanner) {
        const cfg = BANNER_CONFIG.mainBanner;
        mainBannerEl.parentElement.href = cfg.link;
        
        if (cfg.image) {
            mainBannerEl.style.background = `url('${cfg.image}') center/cover no-repeat`;
            mainBannerEl.querySelector('.banner-inner').style.background = 'rgba(0,0,0,0.4)';
        } else {
            mainBannerEl.style.background = cfg.backgroundColor;
        }
        
        const titleEl = mainBannerEl.querySelector('.banner-title');
        const descEl = mainBannerEl.querySelector('.banner-desc');
        const btnEl = mainBannerEl.querySelector('.banner-cta');
        
        if (titleEl) titleEl.textContent = cfg.title;
        if (descEl) descEl.textContent = cfg.description;
        if (btnEl) btnEl.textContent = cfg.buttonText;
    }

    // 서브 배너 적용
    const subBannerEls = document.querySelectorAll('.sub-banner');
    subBannerEls.forEach((el, idx) => {
        if (BANNER_CONFIG.subBanners[idx]) {
            const cfg = BANNER_CONFIG.subBanners[idx];
            const link = el.querySelector('a');
            const inner = el.querySelector('.sub-banner-inner');
            const nameEl = el.querySelector('.sub-banner-name');
            const textEl = el.querySelector('.sub-banner-text');
            
            if (link) link.href = cfg.link;
            
            if (cfg.image) {
                inner.style.background = `url('${cfg.image}') center/cover no-repeat`;
                inner.style.position = 'relative';
                inner.innerHTML = `<div style="position:absolute;inset:0;background:rgba(0,0,0,0.3);display:flex;flex-direction:column;justify-content:center;align-items:center;">
                    <span class="sub-banner-name">${cfg.title}</span>
                    <span class="sub-banner-text">${cfg.description}</span>
                </div>`;
            } else {
                inner.style.background = cfg.backgroundColor;
                if (nameEl) nameEl.textContent = cfg.title;
                if (textEl) textEl.textContent = cfg.description;
            }
        }
    });

    // 와이드 배너 적용
    const wideBannerEl = document.querySelector('.wide-banner');
    if (wideBannerEl && BANNER_CONFIG.wideBanner) {
        const cfg = BANNER_CONFIG.wideBanner;
        wideBannerEl.href = cfg.link;
        
        if (cfg.image) {
            wideBannerEl.style.background = `url('${cfg.image}') center/cover no-repeat`;
            wideBannerEl.querySelector('.wide-banner-content').style.background = 'rgba(0,0,0,0.4)';
        } else {
            wideBannerEl.style.background = cfg.backgroundColor;
        }
        
        const badgeEl = wideBannerEl.querySelector('.wide-banner-badge');
        const titleEl = wideBannerEl.querySelector('.wide-banner-title');
        const descEl = wideBannerEl.querySelector('.wide-banner-desc');
        const btnEl = wideBannerEl.querySelector('.wide-banner-btn');
        
        if (badgeEl) badgeEl.textContent = cfg.badge;
        if (titleEl) titleEl.textContent = cfg.title;
        if (descEl) descEl.textContent = cfg.description;
        if (btnEl) btnEl.textContent = cfg.buttonText;
    }

    // 중간 배너 적용
    const midBannerEls = document.querySelectorAll('.mid-banner');
    midBannerEls.forEach((el, idx) => {
        if (BANNER_CONFIG.midBanners[idx]) {
            const cfg = BANNER_CONFIG.midBanners[idx];
            el.href = cfg.link;
            
            const inner = el.querySelector('.mid-banner-inner');
            const titleEl = el.querySelector('.mid-title');
            const descEl = el.querySelector('.mid-desc');
            
            if (cfg.image) {
                inner.style.background = `url('${cfg.image}') center/cover no-repeat`;
                inner.style.position = 'relative';
            } else {
                inner.style.background = cfg.backgroundColor;
            }
            
            if (titleEl) titleEl.textContent = cfg.title;
            if (descEl) descEl.textContent = cfg.description;
        }
    });
});
