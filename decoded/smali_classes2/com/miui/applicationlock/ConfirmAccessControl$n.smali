.class public final Lcom/miui/applicationlock/ConfirmAccessControl$n;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method protected constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$n;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lb3/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Lu0/b;->b(Landroid/graphics/Bitmap;)Lu0/b$b;

    move-result-object p1

    invoke-virtual {p1}, Lu0/b$b;->a()Lu0/b;

    move-result-object p1

    invoke-virtual {p1}, Lu0/b;->g()Ljava/util/List;

    move-result-object p1

    const-string v2, "#08C860"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu0/b$d;

    invoke-virtual {v3}, Lu0/b$d;->e()I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/b$d;

    invoke-virtual {v1}, Lu0/b$d;->d()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu0/b$d;

    invoke-virtual {v4}, Lu0/b$d;->d()I

    move-result v5

    if-le v5, v1, :cond_0

    invoke-virtual {v4}, Lu0/b$d;->d()I

    move-result v1

    invoke-virtual {v4}, Lu0/b$d;->e()I

    move-result v3

    goto :goto_0

    :cond_1
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/applicationlock/ConfirmAccessControl$n;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v4, v3, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->Z0(Lcom/miui/applicationlock/ConfirmAccessControl;ILjava/lang/String;)F

    move-result v4

    cmpg-float v5, v4, p1

    if-gez v5, :cond_2

    move-object v2, v1

    move p1, v4

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$n;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->a1(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;

    move-result-object v0

    sget-object v1, Lb3/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb3/b;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/PhoneGLSurfaceView;->setColorState(Lb3/b;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl$n;->a([Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl$n;->b(Ljava/lang/String;)V

    return-void
.end method
