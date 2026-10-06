.class Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lw4/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;->r:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;->J()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq0/a;->F()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;->r:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->l0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
