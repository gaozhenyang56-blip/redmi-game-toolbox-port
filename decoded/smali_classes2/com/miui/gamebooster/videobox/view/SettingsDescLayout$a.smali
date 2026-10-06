.class Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$a;->a:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$a;->a:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$a;->a:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->a(Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;)Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$a;->a:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->a(Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;)Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$a;->a:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->b(Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;)Lg8/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;->c(Lg8/a;)V

    :cond_0
    return-void
.end method
