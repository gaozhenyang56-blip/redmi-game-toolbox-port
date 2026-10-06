.class Lcom/miui/gamebooster/brightness/AutoBrightnessView$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/brightness/AutoBrightnessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/brightness/AutoBrightnessView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/brightness/AutoBrightnessView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView$a;->a:Lcom/miui/gamebooster/brightness/AutoBrightnessView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView$a;->a:Lcom/miui/gamebooster/brightness/AutoBrightnessView;

    invoke-static {p1}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->a(Lcom/miui/gamebooster/brightness/AutoBrightnessView;)V

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView$a;->a:Lcom/miui/gamebooster/brightness/AutoBrightnessView;

    invoke-static {p1}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->b(Lcom/miui/gamebooster/brightness/AutoBrightnessView;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->c(Lcom/miui/gamebooster/brightness/AutoBrightnessView;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView$a;->a:Lcom/miui/gamebooster/brightness/AutoBrightnessView;

    invoke-static {p1}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d(Lcom/miui/gamebooster/brightness/AutoBrightnessView;)Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView$a;->a:Lcom/miui/gamebooster/brightness/AutoBrightnessView;

    invoke-static {p1}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d(Lcom/miui/gamebooster/brightness/AutoBrightnessView;)Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView$a;->a:Lcom/miui/gamebooster/brightness/AutoBrightnessView;

    invoke-static {v0}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->b(Lcom/miui/gamebooster/brightness/AutoBrightnessView;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;->c(Z)V

    :cond_0
    return-void
.end method
