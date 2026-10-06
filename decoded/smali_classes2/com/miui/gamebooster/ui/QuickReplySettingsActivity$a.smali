.class Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;->a:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public v1(Landroid/os/IBinder;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;->a:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/service/IFreeformWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IFreeformWindow;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;Lcom/miui/gamebooster/service/IFreeformWindow;)Lcom/miui/gamebooster/service/IFreeformWindow;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IFreeformWindow :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;->a:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->d0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Lcom/miui/gamebooster/service/IFreeformWindow;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickReplySettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;->a:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->d0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Lcom/miui/gamebooster/service/IFreeformWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;->a:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;->a:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->g0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;->a:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;->a:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->d0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Lcom/miui/gamebooster/service/IFreeformWindow;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;->a:Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/miui/gamebooster/service/IFreeformWindow;->Y7(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v2, "setQuickReplyApps error"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return v1
.end method
