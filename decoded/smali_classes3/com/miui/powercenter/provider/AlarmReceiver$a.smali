.class Lcom/miui/powercenter/provider/AlarmReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/provider/AlarmReceiver;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/powercenter/provider/AlarmReceiver;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/AlarmReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/AlarmReceiver$a;->b:Lcom/miui/powercenter/provider/AlarmReceiver;

    iput-object p2, p0, Lcom/miui/powercenter/provider/AlarmReceiver$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljg/b;->c:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/provider/AlarmReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/v;->j(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lfe/m;->j(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/miui/powercenter/provider/AlarmReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/v;->j(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/provider/AlarmReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lfe/m;->i(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e7

    invoke-static {p1, v0}, Lfe/m;->j(Ljava/util/List;I)V

    :cond_0
    return-void
.end method
