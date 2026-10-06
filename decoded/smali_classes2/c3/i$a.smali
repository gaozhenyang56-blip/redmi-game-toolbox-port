.class Lc3/i$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc3/i;


# direct methods
.method constructor <init>(Lc3/i;)V
    .locals 0

    iput-object p1, p0, Lc3/i$a;->a:Lc3/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "BackgroundManager"

    const-string p2, "update wallpage"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc3/i$a;->a:Lc3/i;

    invoke-virtual {p1}, Lc3/i;->g()V

    return-void
.end method
