.class Lmd/o$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmd/o;


# direct methods
.method constructor <init>(Lmd/o;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmd/o$a;->a:Lmd/o;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lmd/o$a;->a:Lmd/o;

    invoke-static {p1}, Lmd/o;->d(Lmd/o;)V

    return-void
.end method
