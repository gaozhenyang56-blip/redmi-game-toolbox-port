.class public final synthetic Lcom/miui/gamebooster/service/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/service/n;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/gamebooster/service/n;->b:Z

    iput p3, p0, Lcom/miui/gamebooster/service/n;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/n;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/miui/gamebooster/service/n;->b:Z

    iget v2, p0, Lcom/miui/gamebooster/service/n;->c:I

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->a(Ljava/lang/String;ZI)V

    return-void
.end method
