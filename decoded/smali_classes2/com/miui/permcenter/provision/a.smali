.class public final synthetic Lcom/miui/permcenter/provision/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lqc/a;


# direct methods
.method public synthetic constructor <init>(Lqc/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/provision/a;->a:Lqc/a;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/provision/a;->a:Lqc/a;

    invoke-static {v0, p1, p2}, Lcom/miui/permcenter/provision/b;->k(Lqc/a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
