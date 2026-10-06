.class public Lkh/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lkh/e;->b:Ljava/util/List;

    const-string v1, "com.miui.gallery"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lsl/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "com.mi.android.globalFileexplorer"

    goto :goto_0

    :cond_0
    const-string v1, "com.android.fileexplorer"

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/io/File;ZZ)V
    .locals 9

    const-string v0, "FocalLength"

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkh/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "zman_share_sec"

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "heic"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    sget-object v1, Lkh/e;->a:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HeifEncoderThread"

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkh/e;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface;->t()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is HEIC ExifInterface : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroidx/heifwriter/HeifWriter$b;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x2

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/heifwriter/HeifWriter$b;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v4, v1}, Landroidx/heifwriter/HeifWriter$b;->d(I)Landroidx/heifwriter/HeifWriter$b;

    new-instance v1, Landroid/os/Handler;

    sget-object v5, Lkh/e;->a:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v4, v1}, Landroidx/heifwriter/HeifWriter$b;->b(Landroid/os/Handler;)Landroidx/heifwriter/HeifWriter$b;

    const/16 v1, 0x5a

    invoke-virtual {v4, v1}, Landroidx/heifwriter/HeifWriter$b;->c(I)Landroidx/heifwriter/HeifWriter$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/heifwriter/HeifWriter$b;->a()Landroidx/heifwriter/HeifWriter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/heifwriter/HeifWriter;->l()V

    invoke-virtual {v1, v2}, Landroidx/heifwriter/HeifWriter;->c(Landroid/graphics/Bitmap;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroidx/heifwriter/HeifWriter;->n(J)V

    invoke-virtual {v1}, Landroidx/heifwriter/HeifWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "HeifWriter Exception : "

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :try_start_1
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    const-string p1, "GPSAltitudeRef"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSAltitude"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSLatitude"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSLatitudeRef"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSLongitudeRef"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSLongitude"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSTimeStamp"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSProcessingMethod"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSDateStamp"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "FNumber"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ShutterSpeedValue"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ApertureValue"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DateTime"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ExposureTime"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Model"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "XiaomiProduct"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Make"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ISOSpeedRatings"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "WhiteBalance"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Flash"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DateTimeDigitized"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SubSecTime"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SubSecTimeOriginal"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SubSecTimeDigitized"

    invoke-virtual {v1, p1, p0}, Landroidx/exifinterface/media/ExifInterface;->a0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface;->W()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "ExifInterface Exception : "

    invoke-static {v3, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static b(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "ISO"

    invoke-virtual {v1, p0}, Landroidx/exifinterface/media/ExifInterface;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "FocalLength"

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Flash"

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    const-string v1, "zman_share_sec"

    const-string v2, "haveCameraInfo Exception: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static c(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "GPSAltitudeRef"

    invoke-virtual {v1, p0}, Landroidx/exifinterface/media/ExifInterface;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "GPSLatitude"

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLongitude"

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    const-string v1, "zman_share_sec"

    const-string v2, "haveLocationInfo Exception: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lkh/e;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkh/e;->b(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lkh/e;->c(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "zman_share_sec"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static f(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "android.app.Activity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mReferrer"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "zman_share_sec"

    const-string v2, "reflectGetReferrer Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
