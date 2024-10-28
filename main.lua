aviao_14bis = {
    src = "imagens/14bis.png",
    largura = 64,
    altura = 64,
    x = 0,
    y = 0
}

function move_14bis()
    if love.keyboard.isDown('up')then
        aviao_14bis.y = aviao_14bis.y - 2
    end

    if love.keyboard.isDown('down')then
        aviao_14bis.y = aviao_14bis.y + 2
    end

    if love.keyboard.isDown('left')then
        aviao_14bis.x = aviao_14bis.x - 2
    end

    if love.keyboard.isDown('right')then
        aviao_14bis.x = aviao_14bis.x + 2
    end
end

function love.load()
    love.window.setMode(320, 480, {resizable = false})
    love.window.setTitle("14-Bis vs Meteoros")
    love.graphics.newImage(aviao_14bis.src)
    background = love.graphics.newImage("imagens/background.png")
    x, y, w, h = 20, 20, 60, 20
    aviao_14bis.imagem = love.graphics
end

function love.update(dt)
    if love.keyboard.isDown('up','down','left','right') then

    end
end

function love.draw()
    love.graphics.draw(background, 0, 0)
    love.graphics.draw(aviao_14bis.imagem)
end