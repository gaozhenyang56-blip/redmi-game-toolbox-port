.class public final synthetic Lii/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/ai/vision/sdk/AiCore;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/ai/vision/sdk/AiCore;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lii/d;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    iput-object p2, p0, Lii/d;->b:Landroid/content/Context;

    iput p3, p0, Lii/d;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lii/d;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    iget-object v1, p0, Lii/d;->b:Landroid/content/Context;

    iget v2, p0, Lii/d;->c:I

    invoke-static {v0, v1, v2}, Lcom/xiaomi/ai/vision/sdk/AiCore;->a(Lcom/xiaomi/ai/vision/sdk/AiCore;Landroid/content/Context;I)V

    return-void
.end method
