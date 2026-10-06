.class Lcom/miui/gamebooster/beauty/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/beauty/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/beauty/a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/beauty/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/a$a;->a:Lcom/miui/gamebooster/beauty/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a$a;->a:Lcom/miui/gamebooster/beauty/a;

    invoke-static {v0}, Lcom/miui/gamebooster/beauty/a;->c(Lcom/miui/gamebooster/beauty/a;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/beauty/a;->d(Lcom/miui/gamebooster/beauty/a;Landroid/view/View;)V

    return-void
.end method
