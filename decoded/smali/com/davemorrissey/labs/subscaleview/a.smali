.class public final Lcom/davemorrissey/labs/subscaleview/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/lang/Integer;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->a:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/a;->c:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/a;->d:Z

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->b:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/a;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->c:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/a;->d:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/davemorrissey/labs/subscaleview/a;->m(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Asset name must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(I)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a;

    invoke-direct {v0, p0}, Lcom/davemorrissey/labs/subscaleview/a;-><init>(I)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_2

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/davemorrissey/labs/subscaleview/a;-><init>(Landroid/net/Uri;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Uri must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected final c()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->f:I

    return v0
.end method

.method protected final e()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected final f()I
    .locals 1

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->e:I

    return v0
.end method

.method protected final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->d:Z

    return v0
.end method

.method protected final h()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->a:Landroid/net/Uri;

    return-object v0
.end method

.method protected final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->h:Z

    return v0
.end method

.method public k(Z)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/a;->d:Z

    return-object p0
.end method

.method public l()Lcom/davemorrissey/labs/subscaleview/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/a;->k(Z)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v0

    return-object v0
.end method
