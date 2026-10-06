.class Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvf/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;ZILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;",
            "ZI",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->b:Z

    iput p3, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->c:I

    iput-object p4, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvf/k;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->b:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lvf/k;->b:Ljava/lang/String;

    iget-object v2, v0, Lvf/k;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->n0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lvf/k;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->q(Ljava/io/File;)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lvf/l;->s()Lvf/l;

    move-result-object p1

    iget v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->c:I

    invoke-virtual {p1, v0}, Lvf/l;->o(I)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->b:Z

    invoke-static {p1, v0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->o0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;->b(Ljava/lang/Void;)V

    return-void
.end method
