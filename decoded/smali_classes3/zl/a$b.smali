.class Lzl/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lbl/a$i;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pinyinindex.idf"

    invoke-static {p1, v0}, Lbl/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lbl/a;->b(Ljava/lang/String;)Lbl/a$i;

    move-result-object v1

    iput-object v1, p0, Lzl/a$b;->a:Lbl/a$i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lzl/a$b;->a:Lbl/a$i;

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lbl/a;->a(Ljava/io/InputStream;)Lbl/a$i;

    move-result-object p1

    iput-object p1, p0, Lzl/a$b;->a:Lbl/a$i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p1, "ChinesePinyinConverter"

    const-string v0, "Init resource IOException"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lzl/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lzl/a$b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(C)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lzl/a$b;->a:Lbl/a$i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    add-int/lit16 p1, p1, -0x4e00

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v2}, Lbl/a$i;->c(III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ChinesePinyinConverter"

    const-string v0, "The ChinesePinyinConverter dictionary is not correct, need rebuild or reset the ROM."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lzl/a$b;->a:Lbl/a$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbl/a$i;->a()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
