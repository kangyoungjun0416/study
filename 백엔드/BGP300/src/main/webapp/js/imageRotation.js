/**
 * 화면 이미지 로테이션 함수
 * @param {string} imgId     이미지 태그의 id
 * @param {Array}  images    이미지 경로 배열
 * @param {number} interval  전환 주기(밀리초)
 */
function startImageRotation(imgId, images, interval = 3000) {
    let index = 0;
    const mainImage = document.getElementById(imgId);

    if (!mainImage) {
        console.error(`Element with id="${imgId}" not found`);
        return;
    }

    setInterval(() => {
        index = (index + 1) % images.length;
        mainImage.src = images[index];
    }, interval);
}
