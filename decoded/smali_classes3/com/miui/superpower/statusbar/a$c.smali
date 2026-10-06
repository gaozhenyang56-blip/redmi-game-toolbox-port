.class Lcom/miui/superpower/statusbar/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/statusbar/a;


# direct methods
.method constructor <init>(Lcom/miui/superpower/statusbar/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/a$c;->a:Lcom/miui/superpower/statusbar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a$c;->a:Lcom/miui/superpower/statusbar/a;

    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->h(Lcom/miui/superpower/statusbar/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/superpower/statusbar/a$c;->a:Lcom/miui/superpower/statusbar/a;

    invoke-static {v2}, Lcom/miui/superpower/statusbar/a;->m(Lcom/miui/superpower/statusbar/a;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/superpower/statusbar/a;->i(Lcom/miui/superpower/statusbar/a;Landroid/content/Context;Z)V

    return-void
.end method
