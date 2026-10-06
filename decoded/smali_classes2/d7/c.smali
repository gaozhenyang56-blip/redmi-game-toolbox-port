.class public final synthetic Ld7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lak/a;


# direct methods
.method public synthetic constructor <init>(Lak/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/c;->a:Lak/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ld7/c;->a:Lak/a;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->d(Lak/a;Landroid/view/View;)V

    return-void
.end method
