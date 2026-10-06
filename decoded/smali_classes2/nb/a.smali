.class public final synthetic Lnb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/autostart/a;

.field public final synthetic b:Lcom/miui/permcenter/autostart/a$g;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/autostart/a;Lcom/miui/permcenter/autostart/a$g;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb/a;->a:Lcom/miui/permcenter/autostart/a;

    iput-object p2, p0, Lnb/a;->b:Lcom/miui/permcenter/autostart/a$g;

    iput p3, p0, Lnb/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lnb/a;->a:Lcom/miui/permcenter/autostart/a;

    iget-object v1, p0, Lnb/a;->b:Lcom/miui/permcenter/autostart/a$g;

    iget v2, p0, Lnb/a;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/miui/permcenter/autostart/a;->l(Lcom/miui/permcenter/autostart/a;Lcom/miui/permcenter/autostart/a$g;ILandroid/view/View;)V

    return-void
.end method
