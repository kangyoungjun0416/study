document.addEventListener('DOMContentLoaded', () => {
    // 그룹별 이미지 ID 목록 정의 (총 30개씩)
    const images = {
      group1: Array.from({ length: 30 }, (_, i) => i + 10),   // 10 ~ 39
      group2: Array.from({ length: 30 }, (_, i) => i + 40)    // 40 ~ 69
    };
  
    let currentGroup = 'group1'; // 현재 선택된 그룹
    let currentPage = 1;         // 현재 페이지
    const perPage = 10;          // 페이지당 이미지 수
  
    // DOM 요소 가져오기
    const gallery = document.getElementById('gallery');
    const pagination = document.getElementById('pagination');
    const modal = document.getElementById('modal');
    const modalImg = document.getElementById('modalImg');
    const closeBtn = document.getElementById('closeBtn');
  
    // 갤러리 렌더링 함수
    function renderGallery() {
      gallery.innerHTML = '';
  
      // 현재 페이지에 표시할 이미지 ID 추출
      const start = (currentPage - 1) * perPage;
      const end = start + perPage;
      const items = images[currentGroup].slice(start, end);
  
      // 이미지 생성 및 추가
      items.forEach(id => {
        const img = document.createElement('img');
        img.src = `https://picsum.photos/id/${id}/200/200`; // 썸네일
        img.alt = '썸네일 이미지';
        img.onclick = () => showModal(id); // 클릭 시 모달 열기
        gallery.appendChild(img);
      });
  
      renderPagination();
    }
  
    // 페이지네이션 버튼 렌더링
    function renderPagination() {
      pagination.innerHTML = '';
      const total = images[currentGroup].length;
      const pages = Math.ceil(total / perPage);
  
      for (let i = 1; i <= pages; i++) {
        const btn = document.createElement('button');
        btn.innerText = i;
        btn.onclick = () => {
          currentPage = i;
          renderGallery(); // 페이지 전환 시 다시 렌더링
        };
        if (i === currentPage) btn.style.fontWeight = 'bold'; // 현재 페이지 강조
        pagination.appendChild(btn);
      }
    }
  
    // 그룹 전환
    function switchGroup(group) {
      currentGroup = group;
      currentPage = 1; // 첫 페이지로 이동
      renderGallery();
    }
  
    // 이미지 확대 모달 표시
    function showModal(id) {
      modal.classList.remove('hidden');
      modal.classList.add('active');
      modalImg.src = `https://picsum.photos/id/${id}/600/600`; // 확대 이미지
    }
  
    // 모달 닫기 버튼
    closeBtn.addEventListener('click', () => {
      modal.classList.remove('active');
      setTimeout(() => modal.classList.add('hidden'), 300);
    });
  
    // 모달 외부 클릭 시 닫기
    window.addEventListener('click', (e) => {
      if (e.target === modal) {
        modal.classList.remove('active');
        setTimeout(() => modal.classList.add('hidden'), 300);
      }
    });
  
    // 전역 함수로 그룹 전환 등록 (HTML에서 사용됨)
    window.switchGroup = switchGroup;
  
    // 최초 갤러리 로딩
    renderGallery();
  });
  