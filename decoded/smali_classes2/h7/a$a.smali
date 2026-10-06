.class Lh7/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh7/a;


# direct methods
.method constructor <init>(Lh7/a;)V
    .locals 0

    iput-object p1, p0, Lh7/a$a;->a:Lh7/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lh7/a$a;->a:Lh7/a;

    invoke-virtual {v0, p1, p2}, Lh7/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
