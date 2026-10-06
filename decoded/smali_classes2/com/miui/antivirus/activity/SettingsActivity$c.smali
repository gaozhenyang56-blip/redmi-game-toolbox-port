.class Lcom/miui/antivirus/activity/SettingsActivity$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
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


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->q0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lo2/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->r0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity$d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->q0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lo2/f;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->r0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity$d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo2/f;->i(Lcom/miui/guardprovider/VirusObserver;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/activity/SettingsActivity$c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
