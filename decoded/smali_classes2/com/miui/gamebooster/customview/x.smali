.class public final synthetic Lcom/miui/gamebooster/customview/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/customview/y;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/x;->a:Lcom/miui/gamebooster/customview/y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/x;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->f(Lcom/miui/gamebooster/customview/y;)V

    return-void
.end method
