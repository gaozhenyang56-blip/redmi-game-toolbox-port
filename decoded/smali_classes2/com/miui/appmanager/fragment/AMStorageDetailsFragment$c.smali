.class Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;
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
            "Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$c;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->C0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->B0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_2

    invoke-static {p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->x0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->y0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-static {p1, v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->z0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->A0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p2

    invoke-static {p1, v0, v2, p2}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->B0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method
