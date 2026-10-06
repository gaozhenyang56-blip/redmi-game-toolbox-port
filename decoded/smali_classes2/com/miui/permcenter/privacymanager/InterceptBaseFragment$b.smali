.class Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->b:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->a:I

    return-void
.end method

.method public c()V
    .locals 3

    iget v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->a:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->a:I

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->h0(I)V

    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment$b;->c()V

    :cond_1
    :goto_0
    return-void
.end method
