.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "q"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$q;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$w;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result p1

    invoke-static {p2, v0, v1, v2, p1}, Lcom/miui/appmanager/AppManageUtils;->j(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    return-void
.end method
