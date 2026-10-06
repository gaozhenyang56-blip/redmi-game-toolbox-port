.class Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/ui/VlcTextureView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic c(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->access$100(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;)Lcom/miui/fastplayer/FastPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->access$200(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->access$300(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->access$100(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;)Lcom/miui/fastplayer/FastPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->access$200(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;->access$300(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;Z)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/antivirus/ui/c;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/ui/c;-><init>(Lcom/miui/antivirus/ui/AntivirusAnimFrameLayout$c;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
