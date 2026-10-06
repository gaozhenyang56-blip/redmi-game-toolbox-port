.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "w"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;

    invoke-direct {v1, p2, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
