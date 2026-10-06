.class Lcom/miui/superpower/statusbar/button/CellularButton$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/button/CellularButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/statusbar/button/CellularButton;


# direct methods
.method constructor <init>(Lcom/miui/superpower/statusbar/button/CellularButton;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton$a;->a:Lcom/miui/superpower/statusbar/button/CellularButton;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton$a;->a:Lcom/miui/superpower/statusbar/button/CellularButton;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/button/CellularButton;->e(Lcom/miui/superpower/statusbar/button/CellularButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lng/a;->setChecked(Z)V

    return-void
.end method
