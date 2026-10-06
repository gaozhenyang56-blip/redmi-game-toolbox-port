.class public Lx4/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;I)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v1, v2

    const-string v4, "ShaderUtils"

    if-nez v3, :cond_0

    const-string p0, "Could not generate a new OpenGL textureId object."

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " could not be decoded."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v2

    :cond_1
    aget p1, v1, v2

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2802

    const v3, 0x812f

    invoke-static {v0, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    invoke-static {v0, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2801

    const/16 v3, 0x2703

    invoke-static {v0, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v0, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget p0, v1, v2

    return p0
.end method
