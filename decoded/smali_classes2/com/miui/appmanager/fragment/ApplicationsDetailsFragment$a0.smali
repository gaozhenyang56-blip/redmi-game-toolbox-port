.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a0;
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
    name = "a0"
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

.field private b:I


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a0;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a0;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    iget v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a0;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "uninstall_app"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p2}, La8/w1;->j(Landroid/content/Context;)V

    :cond_3
    const-string p2, "update_app"

    :goto_0
    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;I)V

    return-void
.end method
