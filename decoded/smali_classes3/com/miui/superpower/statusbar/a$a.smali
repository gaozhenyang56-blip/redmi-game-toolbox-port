.class Lcom/miui/superpower/statusbar/a$a;
.super Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/superpower/statusbar/a;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/statusbar/a;


# direct methods
.method constructor <init>(Lcom/miui/superpower/statusbar/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/a$a;->a:Lcom/miui/superpower/statusbar/a;

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$g;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V
    .locals 1

    sget-object p1, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->b:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-ne p2, p1, :cond_0

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->d:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-ne p3, v0, :cond_0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/a$a;->a:Lcom/miui/superpower/statusbar/a;

    const/4 p2, 0x1

    :goto_0
    invoke-static {p1, p2}, Lcom/miui/superpower/statusbar/a;->a(Lcom/miui/superpower/statusbar/a;Z)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->d:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-ne p2, v0, :cond_1

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/a$a;->a:Lcom/miui/superpower/statusbar/a;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p1, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-ne p3, p1, :cond_2

    iget-object p1, p0, Lcom/miui/superpower/statusbar/a$a;->a:Lcom/miui/superpower/statusbar/a;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/a;->b(Lcom/miui/superpower/statusbar/a;)Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->x()V

    :cond_2
    return-void
.end method
