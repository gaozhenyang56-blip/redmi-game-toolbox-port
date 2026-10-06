.class public final synthetic Lzf/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/scanner/m;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/scanner/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/j;->a:Lcom/miui/securityscan/scanner/m;

    iput p2, p0, Lzf/j;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lzf/j;->a:Lcom/miui/securityscan/scanner/m;

    iget v1, p0, Lzf/j;->b:I

    invoke-static {v0, v1}, Lcom/miui/securityscan/scanner/m;->b(Lcom/miui/securityscan/scanner/m;I)V

    return-void
.end method
