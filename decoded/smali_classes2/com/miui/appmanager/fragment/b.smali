.class Lcom/miui/appmanager/fragment/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/b;->a:Z

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/b;->a:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/b;->a:Z

    return-void
.end method
