.class Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$i;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$i;->b:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo2/h;->A(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lo2/c;->k(Landroid/content/Context;I)V

    :cond_0
    invoke-static {p1, p2}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->l0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z

    :cond_1
    return-void
.end method
