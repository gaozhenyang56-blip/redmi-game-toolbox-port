.class public final synthetic Lcom/miui/blur/sdk/backdrop/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/miui/blur/sdk/backdrop/p;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/blur/sdk/backdrop/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/l;->a:Lcom/miui/blur/sdk/backdrop/p;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/l;->a:Lcom/miui/blur/sdk/backdrop/p;

    check-cast p1, Landroid/graphics/GraphicBuffer;

    invoke-static {v0, p1}, Lcom/miui/blur/sdk/backdrop/p;->b(Lcom/miui/blur/sdk/backdrop/p;Landroid/graphics/GraphicBuffer;)V

    return-void
.end method
