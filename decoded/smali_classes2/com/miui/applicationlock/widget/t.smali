.class public final synthetic Lcom/miui/applicationlock/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/applicationlock/widget/u;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/applicationlock/widget/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/t;->a:Lcom/miui/applicationlock/widget/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/t;->a:Lcom/miui/applicationlock/widget/u;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/u;->h(Lcom/miui/applicationlock/widget/u;)V

    return-void
.end method
