.class Lcom/miui/securityscan/MainFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->Q1(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$d;->b:Lcom/miui/securityscan/MainFragment;

    iput-boolean p2, p0, Lcom/miui/securityscan/MainFragment$d;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x5

    invoke-static {p1}, Lqf/c;->x(I)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$d;->b:Lcom/miui/securityscan/MainFragment;

    iget-boolean p2, p0, Lcom/miui/securityscan/MainFragment$d;->a:Z

    invoke-static {p1, p2}, Lcom/miui/securityscan/MainFragment;->S0(Lcom/miui/securityscan/MainFragment;Z)V

    return-void
.end method
