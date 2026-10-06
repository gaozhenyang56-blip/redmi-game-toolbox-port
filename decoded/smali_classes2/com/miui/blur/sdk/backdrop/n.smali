.class public final synthetic Lcom/miui/blur/sdk/backdrop/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/blur/sdk/backdrop/p;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/blur/sdk/backdrop/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/n;->a:Lcom/miui/blur/sdk/backdrop/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/n;->a:Lcom/miui/blur/sdk/backdrop/p;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/p;->c(Lcom/miui/blur/sdk/backdrop/p;)V

    return-void
.end method
