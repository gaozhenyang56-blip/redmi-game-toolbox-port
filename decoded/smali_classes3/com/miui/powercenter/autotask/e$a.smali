.class Lcom/miui/powercenter/autotask/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/powercenter/autotask/TextEditPreference$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/e;->c(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/e;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/e$a;->a:Lcom/miui/powercenter/autotask/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e$a;->a:Lcom/miui/powercenter/autotask/e;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/autotask/AutoTask;->setName(Ljava/lang/String;)V

    return-void
.end method
