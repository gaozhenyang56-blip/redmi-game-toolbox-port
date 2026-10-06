.class public Lcom/miui/apppredict/activity/FolderSearchActivity$e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/activity/FolderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/activity/FolderSearchActivity;


# direct methods
.method public constructor <init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$e;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "miui.intent.extra.input_method_visible_height"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-lez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$e;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p1, p2}, Lcom/miui/apppredict/activity/FolderSearchActivity;->w0(Lcom/miui/apppredict/activity/FolderSearchActivity;Z)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$e;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->v0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$e;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p1, v0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->w0(Lcom/miui/apppredict/activity/FolderSearchActivity;Z)Z

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$e;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-virtual {p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method
