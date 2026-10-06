.class public final synthetic Lra/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/optimizecenter/storage/a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/optimizecenter/storage/a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/t;->a:Lcom/miui/optimizecenter/storage/a;

    iput-object p2, p0, Lra/t;->b:Ljava/lang/String;

    iput p3, p0, Lra/t;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lra/t;->a:Lcom/miui/optimizecenter/storage/a;

    iget-object v1, p0, Lra/t;->b:Ljava/lang/String;

    iget v2, p0, Lra/t;->c:I

    invoke-static {v0, v1, v2}, Lcom/miui/optimizecenter/storage/a;->c(Lcom/miui/optimizecenter/storage/a;Ljava/lang/String;I)V

    return-void
.end method
