.class Lcom/miui/powercenter/autotask/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/powercenter/autotask/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/l;->k(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/l;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l$b;->a:Lcom/miui/powercenter/autotask/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l$b;->a:Lcom/miui/powercenter/autotask/l;

    const-string v0, "auto_clean_memory"

    invoke-static {p1, v0}, Lcom/miui/powercenter/autotask/l;->e(Lcom/miui/powercenter/autotask/l;Ljava/lang/String;)V

    return-void
.end method
