.class Lcom/miui/gamebooster/windowmanager/newbox/n0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/windowmanager/newbox/n0;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/windowmanager/newbox/n0;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/n0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/n0;

    invoke-static {p1}, Lcom/miui/gamebooster/windowmanager/newbox/n0;->a(Lcom/miui/gamebooster/windowmanager/newbox/n0;)Lcom/miui/gamebooster/windowmanager/newbox/n0$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/n0;

    invoke-static {p1}, Lcom/miui/gamebooster/windowmanager/newbox/n0;->a(Lcom/miui/gamebooster/windowmanager/newbox/n0;)Lcom/miui/gamebooster/windowmanager/newbox/n0$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/gamebooster/windowmanager/newbox/n0$b;->a()V

    :cond_0
    return-void
.end method
