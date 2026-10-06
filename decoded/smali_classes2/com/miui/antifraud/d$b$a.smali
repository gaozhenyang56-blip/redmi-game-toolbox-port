.class Lcom/miui/antifraud/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antifraud/d$b;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/antifraud/d$b;


# direct methods
.method constructor <init>(Lcom/miui/antifraud/d$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antifraud/d$b$a;->b:Lcom/miui/antifraud/d$b;

    iput p2, p0, Lcom/miui/antifraud/d$b$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antifraud/d$b$a;->b:Lcom/miui/antifraud/d$b;

    iget-object v0, v0, Lcom/miui/antifraud/d$b;->a:Lcom/miui/antifraud/d;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    iget v2, p0, Lcom/miui/antifraud/d$b$a;->a:I

    invoke-static {v0, v1, v2}, Lcom/miui/antifraud/d;->f(Lcom/miui/antifraud/d;Landroid/content/Context;I)V

    return-void
.end method
