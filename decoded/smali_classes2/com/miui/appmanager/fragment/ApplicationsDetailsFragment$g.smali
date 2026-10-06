.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$g;
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
    name = "g"
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

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$g;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$h;

    invoke-direct {p2, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$h;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    :goto_0
    invoke-static {p1, v0, p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_4

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$i;

    invoke-direct {p2, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$i;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-static {p1, v1, p2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$h;

    invoke-direct {p2, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$h;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    goto :goto_0

    :goto_1
    return-void
.end method
