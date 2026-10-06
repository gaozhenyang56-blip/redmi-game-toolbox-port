.class Lcom/miui/securitycenter/Application$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/Application;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/Application$g;->a:Lcom/miui/securitycenter/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "ImageLoader clear memory info"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    invoke-static {}, Lrh/d;->o()Lrh/d;

    move-result-object v0

    invoke-virtual {v0}, Lrh/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lrh/d;->o()Lrh/d;

    move-result-object v0

    invoke-virtual {v0}, Lrh/d;->d()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
