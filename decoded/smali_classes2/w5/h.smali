.class public final synthetic Lw5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/beauty/BeautyService;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/h;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lw5/h;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {v0}, Lcom/miui/gamebooster/beauty/BeautyService;->o(Lcom/miui/gamebooster/beauty/BeautyService;)V

    return-void
.end method
