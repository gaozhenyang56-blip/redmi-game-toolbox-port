.class Lpd/c$e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpd/c;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpd/c;


# direct methods
.method constructor <init>(Lpd/c;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lpd/c$e;->a:Lpd/c;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lpd/c$e;->a:Lpd/c;

    invoke-static {p1}, Lpd/c;->h(Lpd/c;)V

    return-void
.end method
