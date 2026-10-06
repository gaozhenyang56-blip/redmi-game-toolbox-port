.class Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$c;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$c;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->j0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo2/b$b;

    iget-object p2, p2, Lo2/b$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$c;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->j0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->m0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
