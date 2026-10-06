.class Lcom/miui/superpower/statusbar/button/GPSButton$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/button/GPSButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/statusbar/button/GPSButton;


# direct methods
.method constructor <init>(Lcom/miui/superpower/statusbar/button/GPSButton;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/button/GPSButton$a;->a:Lcom/miui/superpower/statusbar/button/GPSButton;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/GPSButton$a;->a:Lcom/miui/superpower/statusbar/button/GPSButton;

    invoke-virtual {p1}, Lcom/miui/superpower/statusbar/button/GPSButton;->d()V

    return-void
.end method
